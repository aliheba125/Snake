.class public Landroidx/appcompat/view/menu/b40$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/b40;
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

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    new-instance p2, Landroidx/appcompat/view/menu/c40;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/IInterface;

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/c40;-><init>(Landroid/os/IInterface;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ob;->b()V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ob;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
