.class public final Landroidx/appcompat/view/menu/vu$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/vu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/vu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/su;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/su;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/vu$e;->a:Landroidx/appcompat/view/menu/su;

    iput p2, p0, Landroidx/appcompat/view/menu/vu$e;->c:I

    iput p3, p0, Landroidx/appcompat/view/menu/vu$e;->b:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/vu$e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/vu$e;->c:I

    return v0
.end method

.method public b()Landroidx/appcompat/view/menu/su;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu$e;->a:Landroidx/appcompat/view/menu/su;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/vu$e;->b:I

    return v0
.end method
