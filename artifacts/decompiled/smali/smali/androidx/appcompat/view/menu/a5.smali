.class public abstract Landroidx/appcompat/view/menu/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$a;

.field public static c:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.content.res.AssetManager"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/a5;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/a5;->b:Landroidx/appcompat/view/menu/go0$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "addAssetPath"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/a5;->c:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
