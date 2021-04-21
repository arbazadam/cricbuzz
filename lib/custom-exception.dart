class HttpException implements Exception
{
  final message;
  HttpException({this.message});

  String toString() => message;
}