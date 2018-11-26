from flask import Flask

app = Flask(__name__)


def get_fibonacci(value):
    """ Calculate the Fibanacci """
    if value == 0:
        return 0
    elif value == 1:
        return 1
    else:
        return get_fibonacci(value - 1) + get_fibonacci(value - 2)


@app.route('/fibonacci/<int:number>')
def fibonacci(number=1):
    return "Fibonacci number: {}".format(get_fibonacci(number))


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False)
