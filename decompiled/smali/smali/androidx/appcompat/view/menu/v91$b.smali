.class public abstract Landroidx/appcompat/view/menu/v91$b;
.super Landroidx/appcompat/view/menu/v91$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/v91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroidx/appcompat/view/menu/uv0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/v91$a;-><init>(Landroid/view/Window;Landroidx/appcompat/view/menu/uv0;)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v91$a;->h(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v91$a;->e(I)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$a;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$a;->g(I)V

    :goto_0
    return-void
.end method
