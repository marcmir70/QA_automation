#código da página Basic Module Usage - https://www.psycopg.org/docs/usage.html
import psycopg2

def remove_customer_by_cpf(cpf):
    cpf_formatado = cpf[:3] + "." + cpf[3:6] + "." + cpf[6:9] + "-" + cpf [9:]
    # Connect to an existing database
    conn = psycopg2.connect(
        host='zepalheta-postgres', 
        dbname='zepalheta', 
        user='postgres',
        password= 'qaninja'
    )

    query = "delete from public.customers where cpf ='{}';".format(cpf_formatado)
    print(query)

    # Open a cursor to perform database operations
    cur = conn.cursor()

    # Execute a command: this creates a new table
    cur.execute(query)

    # Make the changes to the database persistent
    conn.commit()

    # Close communication with the database
    cur.close()
    conn.close()