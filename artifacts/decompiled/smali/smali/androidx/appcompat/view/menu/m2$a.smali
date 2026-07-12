.class public abstract Landroidx/appcompat/view/menu/m2$a;
.super Landroidx/appcompat/view/menu/m2$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/m2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/ac;Ljava/lang/Object;Landroidx/appcompat/view/menu/df;Landroidx/appcompat/view/menu/hg0;)Landroidx/appcompat/view/menu/m2$f;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "buildClient must be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/ac;Ljava/lang/Object;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)Landroidx/appcompat/view/menu/m2$f;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/view/menu/m2$a;->a(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/ac;Ljava/lang/Object;Landroidx/appcompat/view/menu/df;Landroidx/appcompat/view/menu/hg0;)Landroidx/appcompat/view/menu/m2$f;

    move-result-object p1

    return-object p1
.end method
