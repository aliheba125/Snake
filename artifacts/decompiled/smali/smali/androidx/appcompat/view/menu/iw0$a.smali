.class public final Landroidx/appcompat/view/menu/iw0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/iw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/iw0$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/iw0$a;Ljava/lang/Object;Ljava/lang/String;Landroidx/appcompat/view/menu/e51;Landroidx/appcompat/view/menu/la0;ILjava/lang/Object;)Landroidx/appcompat/view/menu/iw0;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p3, Landroidx/appcompat/view/menu/z8;->a:Landroidx/appcompat/view/menu/z8;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/z8;->a()Landroidx/appcompat/view/menu/e51;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p4, Landroidx/appcompat/view/menu/g2;->a:Landroidx/appcompat/view/menu/g2;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/iw0$a;->a(Ljava/lang/Object;Ljava/lang/String;Landroidx/appcompat/view/menu/e51;Landroidx/appcompat/view/menu/la0;)Landroidx/appcompat/view/menu/iw0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Landroidx/appcompat/view/menu/e51;Landroidx/appcompat/view/menu/la0;)Landroidx/appcompat/view/menu/iw0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/v41;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/v41;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/appcompat/view/menu/e51;Landroidx/appcompat/view/menu/la0;)V

    return-object v0
.end method
