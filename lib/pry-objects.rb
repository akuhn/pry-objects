require 'pry-objects/version'

module PryObjects

  def self.call(filter)
    GC.disable
    enum = ObjectSpace.each_object(filter)
    before = enum.entries
    yield rescue nil
    after = enum.entries
    GC.enable

    hash = {}
    after.each { |each| hash[each.object_id] = each }
    before.each { |each| hash.delete(each.object_id) }
    hash.delete(after.object_id)
    hash.delete(before.object_id)
    hash.values
  end

end

Pry::Commands.create_command 'objects' do

  group 'Debug'
  description 'Evaluate expression and print created objects.'
  command_options argument_required: true, keep_retval: true

  def process
    target.eval "objects = PryObjects.call(false) { #{arg_string} }"
  end

end
