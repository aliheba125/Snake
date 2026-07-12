.class public abstract Landroidx/appcompat/view/menu/m90$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/m90$a$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.app.LoadedApk$ReceiverDispatcher"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/m90$a;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "mIIntentReceiver"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/m90$a;->b:Landroidx/appcompat/view/menu/go0$b;

    return-void
.end method
