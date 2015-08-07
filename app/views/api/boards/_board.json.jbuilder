json.extract!(board, :title, :id)

if show_lists
  json.lists do
    json.array!(board.lists) do |list|
      json.partial!('api/lists/list', list: list)
    end
  end
end
