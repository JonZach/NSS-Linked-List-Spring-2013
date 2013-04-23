class LinkedListItem
  attr_reader :next_list_item
  attr_reader :payload

  def initialize( thepayload )
  @payload = thepayload
  end

  def next_list_item= (linked_list_item)
  if linked_list_item == self
    raise ArgumentError.new('cannot equal itself')
  end
  @next_list_item = linked_list_item
  end

  def last?
# ALSO CAN DO: next_list_item.nil?
# can use instance variable w/@ or method w/no @ because has access to both
  if next_list_item.nil?
    true
  else
    false
  end
  end
end
