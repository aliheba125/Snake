.class public Landroidx/appcompat/view/menu/s21$a;
.super Landroidx/appcompat/view/menu/wu$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/s21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/fp0$e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/fp0$e;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wu$c;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/s21$a;->a:Landroidx/appcompat/view/menu/fp0$e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s21$a;->a:Landroidx/appcompat/view/menu/fp0$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/fp0$e;->h(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s21$a;->a:Landroidx/appcompat/view/menu/fp0$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/fp0$e;->i(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
