import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/recipe.dart';
import '../../data/repository.dart';
import '../../network/recipe_model.dart';
import '../colors.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<Repository>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: primaryColor,
        ),
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  recipe.label ?? '',
                  style: GoogleFonts.montserrat(
                    color: hColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: 16,),
                CachedNetworkImage(
                  imageUrl: recipe.image ?? '',
                  alignment: Alignment.topLeft,
                  fit: BoxFit.fill,
                  width: size.width,
                ),
                SizedBox(height: 16,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Calories',
                    style: GoogleFonts.lekton(
                      color: secondaryColor,
                      fontSize: 24
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(recipe.calories!.toInt().toString(),
                    style: GoogleFonts.lekton(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 36
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: primaryColor,
                        ),
                          ),
                    ),
                    onPressed: () {
                      repository.insertRecipe(recipe);
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/images/icon_bookmark.svg',
                      color: primaryColor,
                    ),
                    label:  Text(
                      'Bookmark',
                      style: GoogleFonts.lekton(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
