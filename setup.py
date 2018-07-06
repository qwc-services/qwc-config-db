from distutils.core import setup


desc = """\
==================================
QWC Configuration Database helpers
==================================

Shared SQLAlchemy ORM models for QWC services.
"""

setup(name='qwc-config-db',
      version='0.1',
      description='QWC Configuration Database helpers',
      long_description=desc,
      author='Sourcepole AG',
      author_email='info@sourcepole.ch',
      url='https://github.com/qwc-services/qwc-config-db',
      packages=['qwc_config_db'],
      install_requires=['sqlalchemy', 'flask_login'],
      license='BSD-3-Clause'
      )
