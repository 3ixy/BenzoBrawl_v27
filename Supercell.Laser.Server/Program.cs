namespace Supercell.Laser.Server
{
    using Supercell.Laser.Server.Handler;
    using Supercell.Laser.Server.Settings;
    using System.Drawing;

    static class Program
    {
        public const string SERVER_VERSION = "1.0";
        public const string BUILD_TYPE = "STAGE";

        private static void Main(string[] args)
        {
            Console.Title = "BenzoBrawl v27";
            Directory.SetCurrentDirectory(AppContext.BaseDirectory);

            Colorful.Console.WriteWithGradient(
                @"
$$$$$$$\                                          $$$$$$$$\                                   
$$  __$$\                                         \__$$  __|                                  
$$ |  $$ | $$$$$$\  $$$$$$$\  $$$$$$$$\  $$$$$$\     $$ |    $$$$$$\   $$$$$$\  $$$$$$\$$$$\  
$$$$$$$\ |$$  __$$\ $$  __$$\ \____$$  |$$  __$$\    $$ |   $$  __$$\  \____$$\ $$  _$$  _$$\ 
$$  __$$\ $$$$$$$$ |$$ |  $$ |  $$$$ _/ $$ /  $$ |   $$ |   $$$$$$$$ | $$$$$$$ |$$ / $$ / $$ |
$$ |  $$ |$$   ____|$$ |  $$ | $$  _/   $$ |  $$ |   $$ |   $$   ____|$$  __$$ |$$ | $$ | $$ |
$$$$$$$  |\$$$$$$$\ $$ |  $$ |$$$$$$$$\ \$$$$$$  |   $$ |   \$$$$$$$\ \$$$$$$$ |$$ | $$ | $$ |
\_______/  \_______|\__|  \__|\________| \______/    \__|    \_______| \_______|\__| \__| \__|
                                                                                              
                                                                                              
                                                                                              " + "\n\n\n", Color.Fuchsia, Color.Cyan, 8);

            Logger.Print("BenzoBrawl starting...");

            Logger.Init();
            Configuration.Instance = Configuration.LoadFromFile("config.json");

            Resources.InitDatabase();
            Resources.InitLogic();
            Resources.InitNetwork();

            Logger.Print("Server started! Let's play!");

            ExitHandler.Init();
            CmdHandler.Start();
        }
    }
}