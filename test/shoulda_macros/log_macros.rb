module LogMacros
  def should_contain_one_log_record
    should "contain a log record" do
      assert_equal 1, @con[@central_logger.mongo_collection_name].count
    end
  end

  def should_use_database_name_in_config
    should "use the database name in the config file" do
      assert_equal "system_log", @central_logger.db_configuration['database']
    end
  end
end
