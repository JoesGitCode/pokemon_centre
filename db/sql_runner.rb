require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({
        dbname: 'df85la41qhq9u3',
                        host: 'ec2-54-235-181-55.compute-1.amazonaws.com
 ',
user: 'yuvvpjuveqsalw',
password: '0f4bbc4e04d3d68c1ed89c0f09ae8ea5439371d096218b67a33e0a2998ddf54b
'
})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end
end
