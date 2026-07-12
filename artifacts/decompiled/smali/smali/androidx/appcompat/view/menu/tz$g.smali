.class public Landroidx/appcompat/view/menu/tz$g;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
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

    sget-object p1, Landroidx/appcompat/view/menu/n41;->b:Landroidx/appcompat/view/menu/go0$a;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Landroidx/appcompat/view/menu/n41;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "SnakeEngine"

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
