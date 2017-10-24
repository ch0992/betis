<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 사이드바 아이콘을 사용하기 위한 폰트추가 -->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="resources/js/tinymce/jquery.tinymce.min"></script>
    <script src="resources/js/tinymce/tinymce.min.js"></script>
    <script>
    tinymce.init({
    	selector:'textarea',
    	themes: "modern",
        language: "ko_KR",
        menubar:"tools table format view insert edit",
        autosave_interval : "20s",
        plugins: "autolink autosave code link media image table textcolor autoresize emoticons",
        toolbar: "emoticons undo redo | styleselect | forecolor backcolor bold italic"+ 
                 "| alignleft aligncenter alignright alignjustify | bullist numlist outdent indent"+ 
                 "| table link media custom_image code imageupload",
        setup: function(editor) {
        	
        	// create input and insert in the DOM
        	var inp = $('<input id="tinymce-uploader" type="file" name="pic" accept="image/*" style="display:none">');
            $(editor.getElement()).parent().append(inp);
        	
        editor.addButton('custom_image', {
                title: '이미지삽입',
                icon: 'image',
                onclick: function(e) { // when toolbar button is clicked, open file select modal
                    inp.trigger('click');
                 }
            });
     	// when a file is selected, upload it to the server
        inp.on("change", function(e){
            uploadFile($(this), editor);
          });
        
        function uploadFile(inp, editor) {
            var input = inp.get(0);
            var data = new FormData();
            data.append('files', input.files[0]);

            $.ajax({
              url: '${pageContext.request.contextPath}/images',
              type: 'POST',
              data: data,
              enctype: 'multipart/form-data',
              dataType : 'json',
              processData: false, // Don't process the files
              contentType: false, // Set content type to false as jQuery will tell the server its a query string request
              success: function(data, textStatus, jqXHR) {
                editor.insertContent('<img class="content-img" src="${pageContext.request.contextPath}' + data.location + '" data-mce-src="${pageContext.request.contextPath}' + data.location + '" />');
              },
              error: function(jqXHR, textStatus, errorThrown) {
                if(jqXHR.responseText) {
                  errors = JSON.parse(jqXHR.responseText).errors
                  alert('Error uploading image: ' + errors.join(", ") + '. Make sure the file is an image and has extension jpg/jpeg/png.');
                }
              }
            });
          }
        }
    });
   </script>
</head>
<body>
<!-- Modal : Yboard Edit -->
	<div class="modal fade" id="yboardEditModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">글쓰기</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="yboardForm">
						<input type="hidden" id="yboard_boardIDEncrypt" name="boardIDEncrypt">
						<div class="form-group">
							<label for="yboard_boardTitle" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="yboard_boardTitle"
									name="boardTitle" placeholder="제목을 입력하세요">
							</div>
						</div>
						<!-- <div class="form-group">
							<label for="yboard_priority" class="col-sm-2 control-label">우선순위</label>
							<div class="col-sm-10">
								<select id="yboard_priority" class="selectpicker">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
								</select>
							</div>
						</div> -->
						<div class="form-group">
							<label for="yboard_userName" class="col-sm-2 control-label">작성자</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="yboard_userName"
									name="userName" placeholder="작성자명을 입력하세요">
							</div>
						</div>
						<!-- <div class="form-group">
							<label for="yboard_genderM" class="col-sm-2 control-label">성별</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input type="radio"
									id="yboard_genderM" name="userGender" value="M">남성
								</label> <label class="radio-inline"> <input type="radio"
									id="yboard_genderF" name="userGender" value="F">여성
								</label>
							</div>
						</div> -->
						<div class="form-group">
							<div class="col-sm-12">
									<textarea style="height: 200px; width: 100%;"
										id="yboard_boardContent" name="boardContent"></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="btnYboardSave">저장</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>