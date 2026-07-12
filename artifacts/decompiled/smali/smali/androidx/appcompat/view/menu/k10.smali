.class public abstract Landroidx/appcompat/view/menu/k10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.content.IIntentReceiver"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/k10;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "performReceive"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/k10;->b:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
