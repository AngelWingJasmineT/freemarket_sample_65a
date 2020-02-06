$(function() {

    $(".toppage__choice__left__category").on("mouseover", function(){
      $(".toppage__choice__left__category__parents").css("display","grid");
    })
    function buildChildHTML(child){
      var html =`<a class="child_category" id="${child.id}" 
                  href="/category/${child.id}">${child.name}</a>`;
      return html;
    }
    $(".parent_category").on("mouseover", function() {
      var id = this.id
      $(".child_category").remove();
      $(".grand_child_category").remove();
      $.ajax({
        type: 'GET',
        url: '/category/new',
        data: {parent_id: id},
        dataType: 'json'
      }).done(function(children) {
        children.forEach(function (child) {
          var html = buildChildHTML(child);
          $(".toppage__choice__left__category__parents__children").append(html);
        })
      });
    });
    function buildGrandChildHTML(child){
      var html =`<a class="grand_child_category" id="${child.id}"
                 href="/category/${child.id}">${child.name}</a>`;
      return html;
    }
  
    $(document).on("mouseover", ".child_category", function () {
      var id = this.id
      $.ajax({
        type: 'GET',
        url: '/category/new',
        data: {parent_id: id},
        dataType: 'json'
      }).done(function(children) {
        children.forEach(function (child) {
          var html = buildGrandChildHTML(child);
          $(".toppage__choice__left__category__parents__children__grand_children").append(html);
        })
        $(document).on("mouseover", ".child_category", function () {
          $(".grand_child_category").remove();
        });
        $(document).on("mouseover", ".toppage__choice__left__brand", function () {
          $(".child_category").remove();
        });
        $(document).on("mouseover", ".toppage__choice__left__brand", function () {
          $(".grand_child_category").remove();
        });
      });
    });  
  });