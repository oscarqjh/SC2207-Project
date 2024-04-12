import random

num_users = 48
day_package_types = [
    'Wellness package', 'Romantic package', 'Foodie package',
    'Adventure package', 'Cultural package', 'Thrill-seeker package',
    'Relaxation package'
]
voucher_ids = [21,22,23,24,25,26,27,28,29,30]

# Generate groups of related users
user_groups = []
for i in range(1, num_users + 1, 4):
  if i + 3 < num_users + 1:
    group = [i, i + 1, i + 2, i + 3]
    user_groups.append(group)

# Assign each group to a day package
day_packages = []
package_voucher_id = 21
for group in user_groups:
  description = random.choice(day_package_types)
  package_voucher_id = random.choice(voucher_ids)
  for user in group:
    day_packages.append((description, user, package_voucher_id))

# Add some random ppl in some of the packages
day_packages.append(('Wellness package', 48, 21))
day_packages.append(('Wellness package', 20, 22))
day_packages.append(('Wellness package', 13, 23))
day_packages.append(('Romantic package', 1, 24))
day_packages.append(('Romantic package', 24, 25))
day_packages.append(('Adventure package', 10, 26))
day_packages.append(('Adventure package', 23, 27))


# Generate user relationships based on the groups
user_relationships = []
relationship_types = ['family', 'friend', 'colleague', 'same club', 'teammate', 'neighbor']
for group in user_groups:
    for i in range(len(group)):
        for j in range(i + 1, len(group)):
            relationship_type = random.choice(relationship_types)
            user_relationships.append((group[i], group[j], relationship_type))
print("Day Packages:")
for package in day_packages:
    print(package)

print("\nUser Relationships:")
for relationship in user_relationships:
    print(relationship)