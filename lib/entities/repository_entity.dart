class RepositoryEntity {
  int id;
  String fullName;
  String humanName;
  String url;
  String description;
  Owner owner;

  RepositoryEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        fullName = json['full_name'],
        humanName = json['human_name'],
        url = json['url'],
        description = json['description'],
        owner = Owner.fromJson(json['owner']);

  Map<String, dynamic> toJson() => {
        'id': this.id,
        'full_name': this.fullName,
        'human_name': this.humanName,
        'url': this.url,
        'description': this.description,
        'owner': this.owner.toJson(),
      };
}

class Owner {
  String name;

  Owner.fromJson(Map<String, dynamic> json) : name = json['name'];

  Map<String, dynamic> toJson() => {
        'name': this.name,
      };
}
