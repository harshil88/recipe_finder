import 'package:google_fonts/google_fonts.dart';
import 'package:recipes/ui/colors.dart';
import '../network/recipe_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget recipeCard(APIRecipe recipe) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CachedNetworkImage(
            imageUrl: recipe.image, height: 210, fit: BoxFit.fill),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            recipe.label,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              color: hColor
            )
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    ),
  );
}
