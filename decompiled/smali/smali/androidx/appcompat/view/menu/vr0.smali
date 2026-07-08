.class public abstract Landroidx/appcompat/view/menu/vr0;
.super Landroidx/appcompat/view/menu/up;
.source "SourceFile"


# instance fields
.field public final p:I

.field public final q:I

.field public final r:J

.field public final s:Ljava/lang/String;

.field public t:Landroidx/appcompat/view/menu/sh;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/up;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/vr0;->p:I

    iput p2, p0, Landroidx/appcompat/view/menu/vr0;->q:I

    iput-wide p3, p0, Landroidx/appcompat/view/menu/vr0;->r:J

    iput-object p5, p0, Landroidx/appcompat/view/menu/vr0;->s:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vr0;->F()Landroidx/appcompat/view/menu/sh;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/vr0;->t:Landroidx/appcompat/view/menu/sh;

    return-void
.end method


# virtual methods
.method public A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/vr0;->t:Landroidx/appcompat/view/menu/sh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Landroidx/appcompat/view/menu/sh;->j(Landroidx/appcompat/view/menu/sh;Ljava/lang/Runnable;Landroidx/appcompat/view/menu/cz0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final F()Landroidx/appcompat/view/menu/sh;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/sh;

    iget v1, p0, Landroidx/appcompat/view/menu/vr0;->p:I

    iget v2, p0, Landroidx/appcompat/view/menu/vr0;->q:I

    iget-wide v3, p0, Landroidx/appcompat/view/menu/vr0;->r:J

    iget-object v5, p0, Landroidx/appcompat/view/menu/vr0;->s:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/sh;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method

.method public final G(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/cz0;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vr0;->t:Landroidx/appcompat/view/menu/sh;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/sh;->i(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/cz0;Z)V

    return-void
.end method
