.class public abstract Landroidx/appcompat/view/menu/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j70;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l9$a;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/Object;


# instance fields
.field public transient m:Landroidx/appcompat/view/menu/j70;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Class;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/l9$a;->a()Landroidx/appcompat/view/menu/l9$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/l9;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l9;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/l9;->o:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/appcompat/view/menu/l9;->p:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/l9;->q:Ljava/lang/String;

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/l9;->r:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/j70;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l9;->m:Landroidx/appcompat/view/menu/j70;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->b()Landroidx/appcompat/view/menu/j70;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/l9;->m:Landroidx/appcompat/view/menu/j70;

    :cond_0
    return-object v0
.end method

.method public abstract b()Landroidx/appcompat/view/menu/j70;
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l9;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l9;->p:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroidx/appcompat/view/menu/m70;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l9;->o:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/l9;->r:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/appcompat/view/menu/do0;->c(Ljava/lang/Class;)Landroidx/appcompat/view/menu/m70;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/appcompat/view/menu/do0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l9;->q:Ljava/lang/String;

    return-object v0
.end method
