json.extract!(board, :title)

if show_lists
  json.lists do
    json.array!(board.lists) do |list|
      json.partial!('api/lists/list', list: list)
    end
  end
end
