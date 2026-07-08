.class public abstract Landroidx/appcompat/view/menu/n41;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$a;

.field public static c:Landroidx/appcompat/view/menu/go0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.content.pm.UserInfo"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/n41;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/n41;->b:Landroidx/appcompat/view/menu/go0$a;

    const-string v1, "FLAG_PRIMARY"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/n41;->c:Landroidx/appcompat/view/menu/go0$b;

    return-void
.end method
