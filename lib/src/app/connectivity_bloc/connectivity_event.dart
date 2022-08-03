import 'package:flutter/material.dart';

@immutable
abstract class ConnectivityEvent {}

class OnConnectivityEvent extends ConnectivityEvent {}

class OnNotConnectivityEvent extends ConnectivityEvent {}
