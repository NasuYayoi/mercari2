// $(function(){
//   Dropzone.autoDiscover = false;

//   $('#file_drop_area').dropzone({
//     url:$('#image').val(),
//     paramName:'image[image]',
//     paralleUploads : 1,
//     acceptedFiles : 'image/*',
//     maxFiles: 10,
//     maxFilesize:3, //MB
//     addRemoveLinks:true,
//     thumbnailWidth:800, //px
//     thumbnailHeight:800, //px
//     success: function(file, response){
//       $(file.previewElement).find('.dz-remove').attr('id',response.itemId);
//       $(file.previewElement).addClass('dz-success');
//     },
//     removedfile: function(file){ var id = $(file.previewTemplate).find('.dz-remove').attr('id'); $.ajax({ type: 'DELETE', url: "/items/" + id, success: function(data){ console.log('data.message'); } }); var previewElement; return (previewElement = file.previewElement) != null ? (previewElement.parentNode.removeChild(file.previewElement)) : (void 0); }
//     // uploadprogress: function(_file, _progress, _size){
//     //     _file.previewElement.querySelector("[data-dz-uploadprogress]").style.width = "" + _progress + "%";
//     // },
//     // success: function(_file, _return, _xml){
//     //     _file.previewElement.classList.add("dz-success");
//     // },
//     // error: function(_file, _error_msg){
//     //     var ref;
//     //     (ref = _file.previewElement) != null ? ref.parentNode.removeChild(_file.previewElemen void 0;
//     // },
//     // removedfile: function(_file){
//     //     var ref;
//     //     (ref = _file.previewElement) != null ? ref.parentNode.removeChild(_file.previewElemen void 0;
//     // },
//     dictFileTooBig: "ファイルが大きすぎます。(@{{filesize}}MB). 最大サイズ: @{{maxFilesize}}MB.",
//     dictInvalidFileType: "画像ファイルのみアップロードが可能です。",
//     dictMaxFilesExceeded: "ファイルは10ファイルまで追加が可能です。",
//     dictRemoveFile:'削除',
//     dictCancelUpload:'キャンセル'

//   });

//   // ここからがタイトルに書いた内容になる。
//   // var myDropzone = new Dropzone('div#file_drop_area.sell-body-picture-body-upload-box', {
//   //   url : "http://hogehoge.com/upload.php",
//   //   addRemoveLinks: true,
//   //   dictRemoveFile: "削除",
//   // }).on("success", function(file, serverResponse){
//   //   // serverResponseにはアップロードされたファイルの名前が返ってくる
//   //   file.previewElement.querySelector("img").alt = serverResponse;
//   // }).on("removedfile", function(file){
//   //   // 削除ボタンが押された時
//   //   console.log( file.previewElement.querySelector("img").alt ); // 削除対象のファイル名が取得出来る
//   //   $.ajax(...);//あとは非同期でファイル名を指定して削除するサーバサイドプログラムへリクエスト
//   // });
// });
