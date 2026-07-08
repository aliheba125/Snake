.class public final synthetic Landroidx/appcompat/view/menu/e41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/py0$a;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/i41;

.field public final synthetic b:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/i41;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e41;->a:Landroidx/appcompat/view/menu/i41;

    iput-object p2, p0, Landroidx/appcompat/view/menu/e41;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/e41;->a:Landroidx/appcompat/view/menu/i41;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e41;->b:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/i41;->g(Landroidx/appcompat/view/menu/i41;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
