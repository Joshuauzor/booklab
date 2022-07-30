import 'dart:async';
import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/domain/usecases/book_usecases.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_cubit.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_state.dart';
import 'package:booklab/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final _titleFocus = FocusNode();
  final _authorFocus = FocusNode();
  final _priceFocus = FocusNode();
  final _imageUrlFocus = FocusNode();
  final _descriptionFocus = FocusNode();

  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _priceController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _descriptionController = TextEditingController();

  late StreamController<String> titleStreamController;
  late StreamController<String> authorStreamController;
  late StreamController<String> priceStreamController;
  late StreamController<String> imageUrlStreamController;
  late StreamController<String> descriptionStreamController;

  final ValueNotifier<bool> _canSubmit = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    titleStreamController = StreamController<String>.broadcast();
    authorStreamController = StreamController<String>.broadcast();
    priceStreamController = StreamController<String>.broadcast();
    imageUrlStreamController = StreamController<String>.broadcast();
    descriptionStreamController = StreamController<String>.broadcast();

    _titleController.addListener(() {
      titleStreamController.sink.add(_titleController.text.trim());
      validateInputs();
    });

    _authorController.addListener(() {
      authorStreamController.sink.add(_authorController.text.trim());
      validateInputs();
    });

    _priceController.addListener(() {
      priceStreamController.sink.add(_authorController.text.trim());
      validateInputs();
    });

    _imageUrlController.addListener(() {
      imageUrlStreamController.sink.add(_imageUrlController.text.trim());
      validateInputs();
    });

    _descriptionController.addListener(() {
      descriptionStreamController.sink.add(_descriptionController.text.trim());
      validateInputs();
    });
  }

  void validateInputs() {
    var canSumit = true;
    final titleError = CustomFormValidation.errorMessage(
      _titleController.text.trim(),
      'title is required',
    );

    final authorError = CustomFormValidation.errorMessage(
      _authorController.text.trim(),
      'author is required',
    );

    final imageUrlError = CustomFormValidation.errorMessage(
      _imageUrlController.text.trim(),
      'image url is required',
    );

    final descriptionError = CustomFormValidation.errorMessage(
      _descriptionController.text.trim(),
      'description is required',
    );

    if (titleError != '' ||
        authorError != '' ||
        imageUrlError != '' ||
        descriptionError != '') {
      canSumit = false;
    }

    _canSubmit.value = canSumit;
  }

  @override
  void dispose() {
    super.dispose();
    titleStreamController.close();
    authorStreamController.close();
    priceStreamController.close();
    imageUrlStreamController.close();
    descriptionStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'Add Book'),
      backgroundColor: AppColors.secondaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: BlocConsumer<HomeViewCubit, HomeViewState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loaded: (book, message) async {
                await FlushBarNotification.showSuccess(
                  context: context,
                  message: 'Custom Book Created',
                );
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              },
              error: (message) {
                FlushBarNotification.showError(
                  context: context,
                  message: message,
                );
              },
            );
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                TextRegular(
                  'Title',
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(5),
                StreamBuilder<String>(
                  stream: titleStreamController.stream,
                  builder: (context, snapshot) {
                    return InputField(
                      controller: _titleController,
                      placeholder: 'Book title',
                      validationMessage: CustomFormValidation.errorMessage(
                        snapshot.data,
                        'Book title is required*',
                      ),
                      validationColor: CustomFormValidation.getColor(
                        snapshot.data,
                        _titleFocus,
                        CustomFormValidation.errorMessage(
                          snapshot.data,
                          'Book title is required*',
                        ),
                      ),
                    );
                  },
                ),
                const Gap(10),
                TextRegular(
                  'Author',
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(5),
                StreamBuilder<String>(
                  stream: authorStreamController.stream,
                  builder: (context, snapshot) {
                    return InputField(
                      controller: _authorController,
                      placeholder: 'Book Author',
                      validationMessage: CustomFormValidation.errorMessage(
                        snapshot.data,
                        'Author is required*',
                      ),
                      validationColor: CustomFormValidation.getColor(
                        snapshot.data,
                        _authorFocus,
                        CustomFormValidation.errorMessage(
                          snapshot.data,
                          'Author is required*',
                        ),
                      ),
                    );
                  },
                ),
                const Gap(10),
                TextRegular(
                  'Price',
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(5),
                StreamBuilder<String>(
                  stream: priceStreamController.stream,
                  builder: (context, snapshot) {
                    return InputField(
                      controller: _priceController,
                      placeholder: 'Book Price',
                      textInputType: TextInputType.number,
                      validationMessage: CustomFormValidation.errorMessage(
                        snapshot.data,
                        'Price is required*',
                      ),
                      validationColor: CustomFormValidation.getColor(
                        snapshot.data,
                        _priceFocus,
                        CustomFormValidation.errorMessage(
                          snapshot.data,
                          'Price is required*',
                        ),
                      ),
                    );
                  },
                ),
                const Gap(10),
                TextRegular(
                  'Image Url',
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(5),
                StreamBuilder<String>(
                  stream: imageUrlStreamController.stream,
                  builder: (context, snapshot) {
                    return InputField(
                      controller: _imageUrlController,
                      placeholder: 'www.imagerabbit.com/image',
                      validationMessage: CustomFormValidation.errorMessage(
                        snapshot.data,
                        'Image url is required*',
                      ),
                      validationColor: CustomFormValidation.getColor(
                        snapshot.data,
                        _imageUrlFocus,
                        CustomFormValidation.errorMessage(
                          snapshot.data,
                          'Image url is required*',
                        ),
                      ),
                    );
                  },
                ),
                const Gap(10),
                TextRegular(
                  'Description',
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(5),
                StreamBuilder<String>(
                  stream: descriptionStreamController.stream,
                  builder: (context, snapshot) {
                    return SizedBox(
                      child: InputField(
                        controller: _descriptionController,
                        placeholder: 'Book Description',
                        validationMessage: CustomFormValidation.errorMessage(
                          snapshot.data,
                          'Description is required*',
                        ),
                        validationColor: CustomFormValidation.getColor(
                          snapshot.data,
                          _descriptionFocus,
                          CustomFormValidation.errorMessage(
                            snapshot.data,
                            'Description is required*',
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const Gap(30),
                ValueListenableBuilder(
                  valueListenable: _canSubmit,
                  builder: (
                    context,
                    canSubmit,
                    child,
                  ) {
                    return BusyButton(
                      title: 'Create',
                      deactivate: canSubmit == false ||
                          state.maybeWhen(
                            orElse: () => false,
                            loading: () => true,
                          ),
                      loading: state.maybeWhen(
                        orElse: () => false,
                        loading: () => true,
                      ),
                      onpress: () async {
                        await context.read<HomeViewCubit>().addBook(
                              context: context,
                              title: _titleController.text,
                              author: _authorController.text,
                              imgUrl: _imageUrlController.text,
                              price: _priceController.text,
                              description: _descriptionController.text,
                            );
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
