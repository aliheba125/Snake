.class public Landroidx/appcompat/view/menu/uu$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/uu;->d(Landroid/content/Context;Landroidx/appcompat/view/menu/su;ILjava/util/concurrent/Executor;Landroidx/appcompat/view/menu/p9;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroidx/appcompat/view/menu/su;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/appcompat/view/menu/su;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/uu$c;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/uu$c;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/view/menu/uu$c;->c:Landroidx/appcompat/view/menu/su;

    iput p4, p0, Landroidx/appcompat/view/menu/uu$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/uu$e;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/uu$c;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/uu$c;->b:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/view/menu/uu$c;->c:Landroidx/appcompat/view/menu/su;

    iget v3, p0, Landroidx/appcompat/view/menu/uu$c;->d:I

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/uu;->c(Ljava/lang/String;Landroid/content/Context;Landroidx/appcompat/view/menu/su;I)Landroidx/appcompat/view/menu/uu$e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    new-instance v0, Landroidx/appcompat/view/menu/uu$e;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/uu$e;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/uu$c;->a()Landroidx/appcompat/view/menu/uu$e;

    move-result-object v0

    return-object v0
.end method
