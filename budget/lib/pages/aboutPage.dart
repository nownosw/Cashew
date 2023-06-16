import 'package:budget/database/tables.dart';
import 'package:budget/functions.dart';
import 'package:budget/main.dart';
import 'package:budget/pages/debugPage.dart';
import 'package:budget/pages/onBoardingPage.dart';
import 'package:budget/struct/databaseGlobal.dart';
import 'package:budget/widgets/button.dart';
import 'package:budget/widgets/openBottomSheet.dart';
import 'package:budget/widgets/openPopup.dart';
import 'package:budget/widgets/pageFramework.dart';
import 'package:budget/widgets/showChangelog.dart';
import 'package:budget/widgets/tappable.dart';
import 'package:budget/widgets/textWidgets.dart';
import 'package:flutter/material.dart';
import 'package:budget/colors.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String version = packageInfoGlobal.version;
    String buildNumber = packageInfoGlobal.buildNumber;
    return PageFramework(
      dragDownToDismiss: true,
      title: "About",
      navbar: false,
      appBarBackgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      appBarBackgroundColorStart: Theme.of(context).canvasColor,
      horizontalPadding: getHorizontalPaddingConstrained(context),
      listWidgets: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              Image(
                image: AssetImage("assets/icon/icon.png"),
                width: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Tappable(
                    borderRadius: 15,
                    onLongPress: () {
                      pushRoute(
                        context,
                        DebugPage(),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 10),
                      child: TextFont(
                        text: "Cashew",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        textAlign: TextAlign.center,
                        maxLines: 5,
                      ),
                    ),
                  ),
                  Tappable(
                    borderRadius: 10,
                    onTap: () {
                      showChangelog(context, forceShow: true);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: TextFont(
                        text: "v" +
                            version +
                            "+" +
                            buildNumber +
                            ", db-v" +
                            schemaVersionGlobal.toString(),
                        fontSize: 14,
                        textAlign: TextAlign.center,
                        maxLines: 5,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 5),
          child: Tappable(
            onTap: () {},
            color: getColor(context, "lightDarkAccent"),
            borderRadius: 15,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
              child: Column(
                children: [
                  TextFont(
                    text: "Lead Developer",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                  ),
                  TextFont(
                    text: "James",
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    textColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                  ),
                  TextFont(
                    text: "dapperappdeveloper@gmail.com",
                    fontSize: 16,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    textColor: getColor(context, "textLight"),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 5),
          child: Tappable(
            onTap: () {},
            color: getColor(context, "lightDarkAccent"),
            borderRadius: 15,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
              child: Column(
                children: [
                  TextFont(
                    text: "Database Designer",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                  ),
                  TextFont(
                    text: "YuYing",
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    textColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Button(
                  label: "View App Intro",
                  onTap: () {
                    pushRoute(
                      context,
                      OnBoardingPage(popNavigationWhenDone: true),
                    );
                  },
                  expandedLayout: true,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 23),
                child: Button(
                  label: "View Changelog",
                  onTap: () {
                    showChangelog(context, forceShow: true);
                  },
                  expandedLayout: true,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
          child: Center(
            child: TextFont(
              text: "Graphics",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              maxLines: 5,
            ),
          ),
        ),
        AboutInfoBox(
          title: "Icons from FlatIcon by FreePik",
          link: "https://www.flaticon.com/",
        ),
        AboutInfoBox(
          title: "Icons from Font Awesome",
          link: "http://fortawesome.github.com/Font-Awesome/",
        ),
        AboutInfoBox(
          title: "Landing graphics by pch-vector",
          link: "https://www.freepik.com/author/pch-vector",
        ),
        Container(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
          child: Center(
            child: TextFont(
              text: "Major Tools",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              maxLines: 5,
            ),
          ),
        ),
        AboutInfoBox(
          title: "Flutter",
          link: "https://flutter.dev/",
        ),
        AboutInfoBox(
          title: "Google Cloud APIs",
          link: "https://cloud.google.com/",
        ),
        AboutInfoBox(
          title: "Drift SQL Database",
          link: "https://drift.simonbinder.eu/",
        ),
        AboutInfoBox(
          title: "FL Charts",
          link: "https://github.com/imaNNeoFighT/fl_chart",
        ),
        AboutInfoBox(
          title: "Currency Rates API",
          link: "https://github.com/fawazahmed0/currency-api",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
          child: Button(
            label: "View Licenses",
            onTap: () {
              showLicensePage(
                  context: context,
                  applicationVersion: "v" +
                      version +
                      "+" +
                      buildNumber +
                      ", db-v" +
                      schemaVersionGlobal.toString(),
                  applicationLegalese:
                      "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE." +
                          "\n\n" +
                          "Please note that the exchange rates provided within this app are for informational purposes only and should not be used as a basis for making investment decisions. While we strive to provide accurate and up-to-date information, we cannot guarantee the accuracy or completeness of the rates displayed within the app. Additionally, these rates are provided as estimates and may not reflect the exact exchange rates that you would receive in a real-world transaction. We strongly recommend that you consult with a financial advisor or do your own research before making any investment decisions. By using this app, you acknowledge that you understand and accept these limitations and that you assume full responsibility for any decisions made based on the information provided within the app.");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
          child: Center(
            child: TextFont(
              text: "Made in Canada 🍁",
              fontSize: 14,
              textAlign: TextAlign.center,
              maxLines: 5,
            ),
          ),
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
          child: Button(
            label: "Delete All Data",
            onTap: () {
              openPopup(
                context,
                title: "Erase everything?",
                description: "All Google Drive backups will be kept.",
                icon: Icons.warning_amber_rounded,
                onSubmit: () async {
                  Navigator.pop(context);
                  openPopup(
                    context,
                    title: "Are you sure you want to erase everything?",
                    description: "All data and preferences will be deleted!",
                    icon: Icons.warning_rounded,
                    onSubmit: () async {
                      Navigator.pop(context);
                      openLoadingPopup(context);
                      await Future.wait([
                        database.deleteEverything(),
                        sharedPreferences.clear()
                      ]);
                      Navigator.pop(context);
                      restartApp(context);
                    },
                    onSubmitLabel: "Erase",
                    onCancelLabel: "Cancel",
                    onCancel: () {
                      Navigator.pop(context);
                    },
                  );
                },
                onSubmitLabel: "Erase",
                onCancelLabel: "Cancel",
                onCancel: () {
                  Navigator.pop(context);
                },
              );
            },
            color: Theme.of(context).colorScheme.error,
            textColor: Theme.of(context).colorScheme.onError,
          ),
        ),
      ],
    );
  }
}

class AboutInfoBox extends StatelessWidget {
  const AboutInfoBox({
    Key? key,
    required this.title,
    required this.link,
    this.color,
    this.padding,
  }) : super(key: key);

  final String title;
  final String link;
  final Color? color;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 23, vertical: 5),
      child: Tappable(
        onTap: () async {
          openUrl(link);
        },
        onLongPress: () {
          copyToClipboard(link);
        },
        color: color ?? getColor(context, "lightDarkAccent"),
        borderRadius: 15,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
          child: Column(
            children: [
              TextFont(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                maxLines: 5,
              ),
              SizedBox(height: 6),
              TextFont(
                text: link,
                fontSize: 14,
                textAlign: TextAlign.center,
                textColor: getColor(context, "textLight"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
