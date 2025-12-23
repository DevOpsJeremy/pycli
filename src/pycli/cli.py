import click


@click.group(name="pycli", context_settings=dict(auto_envvar_prefix="PYCLI"))
def pycli():
    pass


@pycli.command(name="hello")
def hello():
    click.echo("Hello world")
