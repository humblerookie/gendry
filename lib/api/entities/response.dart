class Response<T> {
  final T data;
  final Exception error;

  Response(this.data, this.error);
}
