.class public Landroidx/appcompat/view/menu/y10$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y10;
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
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y10$a;->g()I

    move-result p1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y10$a;->f()I

    move-result p2

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {}, Landroidx/appcompat/view/menu/ov0;->l()Landroidx/appcompat/view/menu/ov0;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroidx/appcompat/view/menu/ov0;->f(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y10$a;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
