#
# Autogenerated by Thrift Compiler (0.9.1)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module TReplicationOperation
  COPY_UNPARTITIONED_TABLE = 0
  COPY_PARTITIONED_TABLE = 1
  COPY_PARTITION = 2
  COPY_PARTITIONS = 3
  DROP_TABLE = 4
  DROP_PARTITION = 5
  RENAME_TABLE = 6
  RENAME_PARTITION = 7
  VALUE_MAP = {0 => "COPY_UNPARTITIONED_TABLE", 1 => "COPY_PARTITIONED_TABLE", 2 => "COPY_PARTITION", 3 => "COPY_PARTITIONS", 4 => "DROP_TABLE", 5 => "DROP_PARTITION", 6 => "RENAME_TABLE", 7 => "RENAME_PARTITION"}
  VALID_VALUES = Set.new([COPY_UNPARTITIONED_TABLE, COPY_PARTITIONED_TABLE, COPY_PARTITION, COPY_PARTITIONS, DROP_TABLE, DROP_PARTITION, RENAME_TABLE, RENAME_PARTITION]).freeze
end

module TReplicationStatus
  PENDING = 0
  RUNNING = 1
  SUCCESSFUL = 2
  FAILED = 3
  NOT_COMPLETABLE = 4
  VALUE_MAP = {0 => "PENDING", 1 => "RUNNING", 2 => "SUCCESSFUL", 3 => "FAILED", 4 => "NOT_COMPLETABLE"}
  VALID_VALUES = Set.new([PENDING, RUNNING, SUCCESSFUL, FAILED, NOT_COMPLETABLE]).freeze
end

class TReplicationJob
  include ::Thrift::Struct, ::Thrift::Struct_Union
  ID = 1
  CREATETIME = 2
  UPDATETIME = 3
  OPERATION = 4
  STATUS = 5
  SRCPATH = 6
  SRCCLUSTER = 7
  SRCDB = 8
  SRCTABLE = 9
  SRCPARTITIONS = 10
  SRCMODIFIEDTIME = 11
  RENAMETODB = 12
  RENAMETOTABLE = 13
  RENAMETOPATH = 14
  EXTRAS = 15
  WAITINGONJOBS = 16

  FIELDS = {
    ID => {:type => ::Thrift::Types::I64, :name => 'id'},
    CREATETIME => {:type => ::Thrift::Types::I64, :name => 'createTime'},
    UPDATETIME => {:type => ::Thrift::Types::I64, :name => 'updateTime'},
    OPERATION => {:type => ::Thrift::Types::I32, :name => 'operation', :enum_class => ::TReplicationOperation},
    STATUS => {:type => ::Thrift::Types::I32, :name => 'status', :enum_class => ::TReplicationStatus},
    SRCPATH => {:type => ::Thrift::Types::STRING, :name => 'srcPath'},
    SRCCLUSTER => {:type => ::Thrift::Types::STRING, :name => 'srcCluster'},
    SRCDB => {:type => ::Thrift::Types::STRING, :name => 'srcDb'},
    SRCTABLE => {:type => ::Thrift::Types::STRING, :name => 'srcTable'},
    SRCPARTITIONS => {:type => ::Thrift::Types::LIST, :name => 'srcPartitions', :element => {:type => ::Thrift::Types::STRING}},
    SRCMODIFIEDTIME => {:type => ::Thrift::Types::STRING, :name => 'srcModifiedTime'},
    RENAMETODB => {:type => ::Thrift::Types::STRING, :name => 'renameToDb'},
    RENAMETOTABLE => {:type => ::Thrift::Types::STRING, :name => 'renameToTable'},
    RENAMETOPATH => {:type => ::Thrift::Types::STRING, :name => 'renameToPath'},
    EXTRAS => {:type => ::Thrift::Types::MAP, :name => 'extras', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}},
    WAITINGONJOBS => {:type => ::Thrift::Types::LIST, :name => 'waitingOnJobs', :element => {:type => ::Thrift::Types::I64}}
  }

  def struct_fields; FIELDS; end

  def validate
    unless @operation.nil? || ::TReplicationOperation::VALID_VALUES.include?(@operation)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field operation!')
    end
    unless @status.nil? || ::TReplicationStatus::VALID_VALUES.include?(@status)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field status!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

