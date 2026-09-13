# dbt Airbnb Analytics

A hands-on **Analytics Engineering project using dbt and Snowflake** to transform raw Airbnb data into clean, tested, and analytics-ready data models.

> 🚧 This project is currently in development as I continue expanding my dbt knowledge and implementing additional features.

## Project Overview

This project demonstrates a dbt transformation workflow using Airbnb data stored in Snowflake.

Raw data is transformed through multiple modeling layers into dimensional, fact, and analytical models. The project also demonstrates data quality testing, reusable macros, snapshots, seeds, documentation, unit testing, and model versioning.

## Data Flow

```text
Snowflake Raw Data
        ↓
    dbt Sources
        ↓
Source / Staging Models
        ↓
Dimension & Fact Models
        ↓
Analytics Mart
        ↓
 BI / Reporting
```

## Project Structure

```text
models/
├── src/          # Source/staging models
├── dim/          # Dimension models
├── fct/          # Fact models
├── mart/         # Analytics-ready models
├── sources.yml
└── schema.yml

macros/           # Reusable Jinja/dbt macros
seeds/            # Reference data
snapshots/        # Historical change tracking
tests/            # Custom data quality tests
analyses/         # Ad-hoc analytical queries
```

## dbt Features Implemented

- Models and dependencies using `ref()`
- Snowflake sources using `source()`
- Dimension, fact, and mart modeling
- Seeds
- Snapshots for historical change tracking
- Generic and custom data tests
- Unit tests
- Jinja and reusable macros
- Variables and macro arguments
- dbt packages
- Documentation
- Exposures
- Model versioning and deprecation

## Key Models

**Dimensions**
- `dim_hosts_cleansed`
- `dim_listings_cleansed`
- `dim_listings_w_hosts`

**Facts**
- `fct_reviews`

**Analytics Mart**
- `mart_fullmoon_reviews`

The mart combines Airbnb review data with full-moon reference data to support analysis of review activity around full-moon dates.

## Data Quality & Testing

The project demonstrates multiple approaches to data quality, including:

- Built-in dbt tests
- Generic reusable tests
- Custom SQL tests
- Unit tests
- Positive-value validation
- Minimum-row-count validation

## Technologies

**dbt Core · Snowflake · SQL · Jinja · YAML · Git · GitHub · VS Code**

## Running the Project

Install dbt package dependencies:

```bash
dbt deps
```

Load seed data:

```bash
dbt seed
```

Run the models:

```bash
dbt run
```

Run tests:

```bash
dbt test
```

Generate and view documentation:

```bash
dbt docs generate
dbt docs serve
```

## Ongoing Development

This project is being expanded as I continue working with advanced dbt concepts and analytics engineering practices. New functionality will be added to the repository as the project develops.
