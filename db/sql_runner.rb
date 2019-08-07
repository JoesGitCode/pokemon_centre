require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({
        dbname: 'd2e0v7fffnt1p6',
        host: 'ec2-174-129-226-232.compute-1.amazonaws.com',
        user: 'lrmetsgsrvcojt',
        password: 'd855b456716eec95659140efa071bf6562fed88709d2b7679beca1be22feaeec'
})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end
end
