/**
 * by MonsterDuang
 */
;(function($) {
    /**
     * 1, 缩略图大小和父容器大小一致
     * 2, 父容器 href 属性为高清图片路径
     * 1, 축약도 크기와 부용기 크기 일치
     * 2, 부용기 href 속성은 하이비젼 이미지 경로
     */
    $.fn.zoomImage = function(paras) {
        /**
         * 默认参数
         * 묵시적 파라미터
         */
        var defaultParas = {
            layerW: 100, // 커버 폭
            layerH: 100, // 커버 높이
            layerOpacity: 0.2, // 커버 투명도
            layerBgc: '#000', //  커버 배경색
            showPanelW: 500, // 확대 영역 폭 
            showPanelH: 500, // 확대 영역 높이
            marginL: 5, // 확대 영역이 축약도에서 우측 거리
            marginT: 0 // 확대 영역이 축약도에서 상측 거리
        };

        paras = $.extend({}, defaultParas, paras);

        console.log($(this)+' & '+$(this).typeof);
        $(this).each(function() {
            var self = $(this).css({position: 'relative'});
            var selfOffset = self.offset();
            var imageW = self.width(); // 이미지높이
            var imageH = self.height();

            self.find('img').css({
                width: '100%',
                height: '100%'
            });

            // 宽放大倍数
            //폭 확대 배수
            var wTimes = paras.showPanelW / paras.layerW;
            // 高放大倍数
          //높이 확대 배수
            var hTimes = paras.showPanelH / paras.layerH;

            // 放大图片 확대 이미지
            var img = $('<img>').attr('src', self.attr("href")).css({
                position: 'absolute',
                left: '0',
                top: '0',
                width: imageW * wTimes,
                height: imageH * hTimes
            }).attr('id', 'big-img');

            // 遮罩 가리개 = 이미지 위에 뜨는 회색 사각형
            var layer = $('<div>').css({
                display: 'none',
                position: 'absolute',
                left: '0',
                top: '0',
                backgroundColor: paras.layerBgc,
                width: paras.layerW,
                height: paras.layerH,
                opacity: paras.layerOpacity,
                border: '1px solid #ccc',
                cursor: 'crosshair'
            });

            // 放大区域 확대구역
            var showPanel = $('<div>').css({
                display: 'none',
                position: 'absolute',
                overflow: 'hidden',
                left: imageW + paras.marginL,
                top: paras.marginT,
                width: paras.showPanelW,
                height: paras.showPanelH
            }).append(img);

            self.append(layer).append(showPanel);

            self.on('mousemove', function(e) {
                // 鼠标相对于缩略图容器的坐标
            	//축약도 용기에 대한 마우스 좌표
            	// 사진위에서 움직이는 좌표 계산
                var x = e.pageX - selfOffset.left;
                var y = e.pageY - selfOffset.top;

                if(x <= paras.layerW / 2) {
                    x = 0;
                }else if(x >= imageW - paras.layerW / 2) {
                    x = imageW - paras.layerW;
                }else {
                    x = x - paras.layerW / 2;
                }

                if(y < paras.layerH / 2) {
                    y = 0;
                } else if(y >= imageH - paras.layerH / 2) {
                    y = imageH - paras.layerH;
                } else {
                    y = y - paras.layerH / 2;
                }

                layer.css({
                    left: x,
                    top: y
                });

                img.css({
                    left: -x * wTimes,
                    top: -y * hTimes
                });
            }).on('mouseenter', function() {
                layer.show();
                showPanel.show();
            }).on('mouseleave', function() {
                layer.hide();
                showPanel.hide();
            });
        });
    }
})(jQuery);
