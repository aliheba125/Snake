.class public Landroidx/appcompat/view/menu/qt0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/qt0$a;,
        Landroidx/appcompat/view/menu/qt0$b;,
        Landroidx/appcompat/view/menu/qt0$c;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/qt0$a;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/f8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/qt0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/qt0$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/qt0;->b:Landroidx/appcompat/view/menu/qt0$a;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/si;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/f8;

    const-string v1, "flutter/settings"

    sget-object v2, Landroidx/appcompat/view/menu/m60;->a:Landroidx/appcompat/view/menu/m60;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/f8;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/qt0;->a:Landroidx/appcompat/view/menu/f8;

    return-void
.end method

.method public static synthetic a()Landroidx/appcompat/view/menu/qt0$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qt0;->b:Landroidx/appcompat/view/menu/qt0$a;

    return-object v0
.end method

.method public static b(I)Landroid/util/DisplayMetrics;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qt0;->b:Landroidx/appcompat/view/menu/qt0$a;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/qt0$a;->c(I)Landroidx/appcompat/view/menu/qt0$a$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/qt0$a$b;->a(Landroidx/appcompat/view/menu/qt0$a$b;)Landroid/util/DisplayMetrics;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public d()Landroidx/appcompat/view/menu/qt0$b;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/qt0$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qt0;->a:Landroidx/appcompat/view/menu/f8;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/qt0$b;-><init>(Landroidx/appcompat/view/menu/f8;)V

    return-object v0
.end method
