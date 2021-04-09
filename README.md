# Community/app/views/index.html.slim
h1 Discussions#index
p Find me in app/views/discussions/index.html.erb
= link_to '新規登録', new_discussion_path, class: 'btn btn-primary'

.mb-3
table.table.table-hover
  thead.thead-default
    tr 
      th = Discussion.human_attribute_name(:theme)
      th = Discussion.human_attribute_name(:created_at)
      th
  tbody
   - @discussions.each do |discussion|
     tr
       td = discussion.theme
       td = discussion.created_at
       td
         = link_to '編集', edit_discussion_path(discussion), class: 'btn btn-primary mr-3'
         = link_to '削除', discussion, method: :delete, data: { confirm: "タスク「#{discussion.theme}」を削除します。よろしいですか？" }, class: 'btn btn-danger'
