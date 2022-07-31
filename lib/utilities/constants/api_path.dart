class APIPath {
  static String users() => 'users/';
  static String posts() => 'posts/';
  static String profilesImages(String uId) => 'images/$uId/profile/';
  static String postsImages(String uId) => 'images/$uId/posts/';
}
