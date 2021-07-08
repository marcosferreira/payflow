import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widget/input_text/input_text_widget.dart';
import 'package:payflow/shared/widget/set_label_buttons/set_label_buttons.dart';

class InsertBoletoPage extends StatelessWidget {
  const InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(
          color: AppColors.input,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
              child: Text(
                'Preencha os dados do boleto',
                style: TextStyles.titleBoldHeading,
                textAlign: TextAlign.center,
              ),
            ),
            InputTextWidget(
              label: 'Nome do boleto',
              icon: Icons.description_rounded,
              onChanged: (value) => {},
            ),
            InputTextWidget(
              label: 'Vencimento',
              icon: FontAwesomeIcons.timesCircle,
              onChanged: (value) => {},
            ),
            InputTextWidget(
              label: 'Valor',
              icon: FontAwesomeIcons.wallet,
              onChanged: (value) => {},
            ),
            InputTextWidget(
              label: 'Código',
              icon: FontAwesomeIcons.barcode,
              onChanged: (value) => {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: SetLabelButtons(
        primaryLabel: 'Cancelar',
        primaryOnPressed: () => {},
        enableSecondaryColor: true,
        secondaryLabel: 'Cadastrar',
        secondaryOnPressed: () => {},
      ),
    );
  }
}