package syncdatasources

// Config holds data source config options
type Config struct {
	Name  string `yaml:"name"`
	Value string `yaml:"value"`
}

// DataSource contains data source spec from dev-analytics-api
type DataSource struct {
	Slug   string   `yaml:"slug"`
	Config []Config `yaml:"config"`
}

// Fixture contains full YAML structure of dev-analytics-api fixture files
type Fixture struct {
	Native      map[string]string `yaml:"native"`
	DataSources []DataSource      `yaml:"data_sources"`
	Fn          string
}
