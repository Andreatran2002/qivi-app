import 'package:flutter/material.dart';

@immutable
abstract class ConnectivityState {}

class ConnectivityInitialState extends ConnectivityState {}

class ConnectivitySucessState extends ConnectivityState {}

class ConnectivityFailureState extends ConnectivityState {}
