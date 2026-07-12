.class public abstract Landroidx/appcompat/view/menu/ch0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ch0$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;

.field public static c:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.content.pm.PackageParser"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ch0;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.content.pm.PackageParser$Package"

    invoke-static {v3}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v6, "collectCertificates"

    invoke-virtual {v0, v6, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/ch0;->b:Landroidx/appcompat/view/menu/go0$d;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Ljava/io/File;

    aput-object v6, v2, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v5

    const-class v4, Landroid/util/DisplayMetrics;

    aput-object v4, v2, v1

    const/4 v1, 0x3

    aput-object v3, v2, v1

    const-string v1, "parsePackage"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ch0;->c:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
