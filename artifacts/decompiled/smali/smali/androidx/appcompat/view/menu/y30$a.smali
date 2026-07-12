.class public Landroidx/appcompat/view/menu/y30$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    sget-object p2, Landroidx/appcompat/view/menu/z71;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string p3, "ac:62:5a:82:65:c4"

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Landroidx/appcompat/view/menu/z71;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Landroidx/appcompat/view/menu/z71;->d:Landroidx/appcompat/view/menu/go0$b;

    sget-object p3, Landroidx/appcompat/view/menu/a81;->b:Landroidx/appcompat/view/menu/go0$e;

    const-string v0, "SnakeEngine_Wifi"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
