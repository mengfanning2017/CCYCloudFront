(function ($) {
    "use strict";

    $.fn.treegridData = function (options, param) {
        //如果是调用方法
        if (typeof options == 'string') {
            return $.fn.treegridData.methods[options](this, param);
        }
        
        //如果是初始化组件
        options = $.extend({}, $.fn.treegridData.defaults, options || {});
        var target = $(this);
        //	debugger;
        //得到根节点
        target.getRootNodes = function (data) {
            var result = [];
            $.each(data, function (index, item) {
            	 //	debugger;
                if (!item[options.parentColumn]||(item[options.parentColumn]==null||item[options.parentColumn]==0||item[options.parentColumn]=="0")){
                    result.push(item);
                }
            });
            return result;
        };
        var j = 0;
        //递归获取子节点并且设置子节点
        target.getChildNodes = function (data, parentNode, parentIndex, tbody) {
            $.each(data, function (i, item) {
            	//	debugger;
                if (item[options.parentColumn] == parentNode[options.id]) {
                	 
                    var tr = $('<tr></tr>');
                    var nowParentIndex = item[options.id];
                    tr.addClass('treegrid-' + item[options.id]);
                    tr.addClass('treegrid-parent-' + item[options.parentColumn]);
                    $.each(options.columns, function (index, column) {
                        var td = $('<td></td>');
                        if(column.color!=''){
                        	$(td).css('background-color',column.color);
                        }
                        if(!column.display){
                        	$(td).css('display','none').attr('data-design-value',column.dataDesign);
                        }
                        if(item[column.field]==''||item[column.field]==null||item[column.field]=="null"||item[column.field]=="0"){
                        	td.text("");
                        }else if(column.money!=''&&column.money!=null){
                        	//debugger;
                        	td.text(numeral(item[column.field]).format(column.money)).css('text-align','right');
                    	}else{
                        	td.text(item[column.field]);
                        }
                        tr.append(td);
                    });
                    tbody.append(tr);
                    target.getChildNodes(data, item, nowParentIndex, tbody)
                    
                }
            });
        };
        target.addClass('table');
        if (options.striped) {
            target.addClass('table-striped');
        }
        if (options.bordered) {
            target.addClass('table-bordered');
        }
        if (options.url) {
            $.ajax({
                type: options.type,
                url: options.url,
                data: options.ajaxParams,
                dataType: "JSON",
                success: function (data, textStatus, jqXHR) {
                    //	debugger;
                    //构造表头
                    var thr = $('<tr></tr>');
                    $.each(options.columns, function (i, item) {
                        var th = $('<th style="padding:10px;"></th>');
                        if(!item.display){
                        	$(th).css('display','none').attr('data-design-value',item.dataDesign);
                        }
                        th.text(item.title);
                        thr.append(th);
                    });
                    var thead = $('<thead></thead>');
                    thead.append(thr);
                    target.append(thead);

                    //构造表体
                    var tbody = $('<tbody></tbody>');
                    var rootNode = target.getRootNodes(data);
                	//	debugger;
                    $.each(rootNode, function (i, item) {
                    	//	debugger;
                        var tr = $('<tr></tr>');
                        tr.addClass('treegrid-' + item[options.id]);
                        $.each(options.columns, function (index, column) {
                            var td = $('<td></td>');
                           
                            if(column.color!=''){
                            	$(td).css('background-color',column.color);
                            }
                            if(!column.display){
                            	$(td).css('display','none').attr('data-design-value',column.dataDesign);
                            }
                            if(item[column.field]==''||item[column.field]==null||item[column.field]=="null"||item[column.field]=="0"){
                            	td.text("");
                            }else if(column.money!=''&&column.money!=null){
                            	//debugger;
                            	td.text(numeral(item[column.field]).format(column.money)).css('text-align','right');
                        	}else{
                            	td.text(item[column.field]);
                            }
                            tr.append(td);
                            
                        });
                        tbody.append(tr);
                        target.getChildNodes(data, item, item[options.id], tbody);
                    });
                    target.append(tbody);
                    target.treegrid({
                        expanderExpandedClass: options.expanderExpandedClass,
                        expanderCollapsedClass: options.expanderCollapsedClass
                    });
                    if (!options.expandAll) {
                        target.treegrid('collapseAll');
                    }
                    return;
                }
            });
        }
        else {
            //也可以通过defaults里面的data属性通过传递一个数据集合进来对组件进行初始化....有兴趣可以自己实现，思路和上述类似
        }
        return target;
    };

    $.fn.treegridData.methods = {
        getAllNodes: function (target, data) {
            return target.treegrid('getAllNodes');
        },
        //组件的其他方法也可以进行类似封装........
    };

    $.fn.treegridData.defaults = {
        id: 'Id',
        parentColumn: 'ParentId',
        data: [],    //构造table的数据集合
        type: "GET", //请求数据的ajax类型
        url: null,   //请求数据的ajax的url
        ajaxParams: {}, //请求数据的ajax的data属性
        expandColumn: null,//在哪一列上面显示展开按钮
        expandAll: true,  //是否全部展开
        striped: false,   //是否各行渐变色
        bordered: false,  //是否显示边框
        columns: [],
        expanderExpandedClass: 'glyphicon glyphicon-chevron-down',//展开的按钮的图标
        expanderCollapsedClass: 'glyphicon glyphicon-chevron-right'//缩起的按钮的图标
        
    };
})(jQuery);