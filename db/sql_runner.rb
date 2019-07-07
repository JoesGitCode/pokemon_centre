require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: 'dlian1l5mla13',
                         host: 'ec2-23-21-160-38.compute-1.amazonaws.com
',
user: 'pcdezmcmattdmu',
password: '3c60c5fb974d01c269b2f16a92ce90e4a870b162ead2d325445d449bbd0c53f3'
})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end
end
