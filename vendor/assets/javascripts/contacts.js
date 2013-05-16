      $(document).ready(function() {
          var jsonData = [];
          var tags = '<%= Tag.first.tag_list_string %>'.split(',');
          for(var i=0;i<tags.length;i++) jsonData.push({id:i,name:tags[i]});
          var ms1 = $('#ms1').magicSuggest({
              data: jsonData,
              sortOrder: 'name',
              value: [0],
              selectionPosition: 'right',
              groupBy: 'status',
              maxDropHeight: 200
          });
      });
