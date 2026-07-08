.class public final Landroidx/appcompat/view/menu/hj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/bj1;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/pw1;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/pw1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hj1;->a:Landroidx/appcompat/view/menu/pw1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/hj1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/pw1;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/hj1;->a:Landroidx/appcompat/view/menu/pw1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hj1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/pw1;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/hj1;->a:Landroidx/appcompat/view/menu/pw1;

    return-object p1
.end method
