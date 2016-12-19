   //当页面(包含body中的全部标签元素)全部加载完成
        window.onload = function () {

            var liObjs = document.getElementsByName("a100886");

            //遍历li数组
            for (var obj in liObjs) {
                //li对象绑定onmoseover事件 ,赋予该事件函数

                liObjs[obj].onmouseover = function () {
                    //调用自定义切换table页函数
                    change(this);
                }

            }
            function change(liObj) {
                //先遍历无序列表li数组对象: table1 和table2

                for (var index in liObjs) {
                    //判断传入的li 对象是否等于遍历对象的li
                    if (liObjs[index] == liObj) {
                        //显示选中的table标签
                        liObjs[index].className = "on";
                        //设置当前选择的table页的地址内容
                        var divContent = document.getElementById("tab-" + index);
                        divContent.style.display = "block";
                    } else {
                        //未被选中的li对象
                        liObjs[index].className = "";
                        //设置 未被选择的table页的地址内容为隐藏
                        var divContent = document.getElementById("tab-" + index);
                        divContent.style.display = "none";

                    }
                }
            }
        }
