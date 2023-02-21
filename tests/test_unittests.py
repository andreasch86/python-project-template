import os
from unittest import TestCase

import pandas as pd

from python_project_template.python_code import simple_function


class TestApp(TestCase):
    @staticmethod
    def _get_test_fixture() -> pd.DataFrame:
        fixtures_file = os.path.join(os.path.dirname(__file__), "test-fixtures", "test_file.csv")
        fixture_df = pd.read_csv(fixtures_file)
        return fixture_df

    def setUp(self) -> None:
        self.test_variable = self._get_test_fixture()

    def tearDown(self) -> None:
        self.test_variable = 0

    def test_setup_registry(self):
        self.assertEqual(self.test_variable.iloc[0]["test3"], 3)

    def test_sample_code(self):
        simple_output = simple_function()
        self.assertEqual(simple_output, 42)

