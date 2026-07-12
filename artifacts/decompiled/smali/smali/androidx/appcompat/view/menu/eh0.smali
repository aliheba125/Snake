.class public abstract Landroidx/appcompat/view/menu/eh0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$a;

.field public static c:Landroidx/appcompat/view/menu/go0$d;

.field public static d:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.content.pm.PackageParser"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/eh0;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/eh0;->b:Landroidx/appcompat/view/menu/go0$a;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/pm/PackageParser$Package;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v6, "collectCertificates"

    invoke-virtual {v0, v6, v3}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/view/menu/eh0;->c:Landroidx/appcompat/view/menu/go0$d;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    aput-object v3, v2, v1

    aput-object v4, v2, v5

    const-string v1, "parsePackage"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/eh0;->d:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
