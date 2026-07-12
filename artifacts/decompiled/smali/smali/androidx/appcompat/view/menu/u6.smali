.class public Landroidx/appcompat/view/menu/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/u6$b;,
        Landroidx/appcompat/view/menu/u6$c;,
        Landroidx/appcompat/view/menu/u6$i;,
        Landroidx/appcompat/view/menu/u6$j;,
        Landroidx/appcompat/view/menu/u6$k;,
        Landroidx/appcompat/view/menu/u6$l;,
        Landroidx/appcompat/view/menu/u6$e;,
        Landroidx/appcompat/view/menu/u6$g;,
        Landroidx/appcompat/view/menu/u6$h;,
        Landroidx/appcompat/view/menu/u6$m;,
        Landroidx/appcompat/view/menu/u6$d;,
        Landroidx/appcompat/view/menu/u6$f;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/u6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/util/ArrayList;

.field public final C:Ljava/util/ArrayList;

.field public final D:I

.field public E:Landroid/content/pm/ApplicationInfo;

.field public final F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public final H:I

.field public final I:Ljava/util/ArrayList;

.field public final J:Ljava/util/ArrayList;

.field public K:Landroidx/appcompat/view/menu/j50;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;

.field public final s:Ljava/util/ArrayList;

.field public t:Ljava/util/ArrayList;

.field public final u:[Landroid/content/pm/Signature;

.field public v:Landroidx/appcompat/view/menu/u6$m;

.field public final w:Landroid/os/Bundle;

.field public x:Landroidx/appcompat/view/menu/y6;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/u6$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/u6$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/u6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    .line 4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 5
    new-instance v2, Landroidx/appcompat/view/menu/u6$b;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    iget-object v1, v2, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$c;

    .line 7
    iput-object v2, v3, Landroidx/appcompat/view/menu/u6$c;->t:Landroidx/appcompat/view/menu/u6$b;

    goto :goto_1

    :cond_0
    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    .line 10
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 11
    new-instance v2, Landroidx/appcompat/view/menu/u6$b;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    iget-object v1, v2, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$c;

    .line 13
    iput-object v2, v3, Landroidx/appcompat/view/menu/u6$c;->t:Landroidx/appcompat/view/menu/u6$b;

    goto :goto_3

    :cond_2
    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    .line 16
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 17
    new-instance v2, Landroidx/appcompat/view/menu/u6$i;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$i;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    iget-object v1, v2, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$j;

    .line 19
    iput-object v2, v3, Landroidx/appcompat/view/menu/u6$j;->t:Landroidx/appcompat/view/menu/u6$i;

    goto :goto_5

    :cond_4
    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    .line 22
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 23
    new-instance v2, Landroidx/appcompat/view/menu/u6$k;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$k;-><init>(Landroid/content/pm/PackageParser$Service;)V

    iget-object v1, v2, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$l;

    .line 25
    iput-object v2, v3, Landroidx/appcompat/view/menu/u6$l;->t:Landroidx/appcompat/view/menu/u6$k;

    goto :goto_7

    :cond_6
    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 27
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 29
    new-instance v2, Landroidx/appcompat/view/menu/u6$e;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$e;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 31
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    .line 32
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 33
    new-instance v2, Landroidx/appcompat/view/menu/u6$g;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$g;-><init>(Landroid/content/pm/PackageParser$Permission;)V

    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 35
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->s:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 37
    new-instance v2, Landroidx/appcompat/view/menu/u6$h;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/u6$h;-><init>(Landroid/content/pm/PackageParser$PermissionGroup;)V

    iput-object p0, v2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->s:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 39
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    new-instance v0, Landroidx/appcompat/view/menu/u6$m;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/u6$m;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->v:Landroidx/appcompat/view/menu/u6$m;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u6$m;->m:[Landroid/content/pm/Signature;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->u:[Landroid/content/pm/Signature;

    goto :goto_b

    .line 42
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->u:[Landroid/content/pm/Signature;

    .line 43
    :goto_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->w:Landroid/os/Bundle;

    .line 44
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    .line 45
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6;->z:I

    .line 46
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->A:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->B:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->C:Ljava/util/ArrayList;

    .line 49
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6;->D:I

    .line 50
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    .line 51
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->F:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    .line 53
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6;->H:I

    .line 54
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->I:Ljava/util/ArrayList;

    .line 55
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/appcompat/view/menu/u6;->J:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 60
    new-instance v0, Landroidx/appcompat/view/menu/u6$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$b;-><init>(Landroid/os/Parcel;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$c;

    .line 62
    iput-object v0, v3, Landroidx/appcompat/view/menu/u6$c;->t:Landroidx/appcompat/view/menu/u6$b;

    goto :goto_1

    :cond_0
    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 66
    new-instance v0, Landroidx/appcompat/view/menu/u6$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$b;-><init>(Landroid/os/Parcel;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$c;

    .line 68
    iput-object v0, v3, Landroidx/appcompat/view/menu/u6$c;->t:Landroidx/appcompat/view/menu/u6$b;

    goto :goto_3

    :cond_2
    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5

    .line 72
    new-instance v0, Landroidx/appcompat/view/menu/u6$i;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$i;-><init>(Landroid/os/Parcel;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$j;

    .line 74
    iput-object v0, v3, Landroidx/appcompat/view/menu/u6$j;->t:Landroidx/appcompat/view/menu/u6$i;

    goto :goto_5

    :cond_4
    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_4

    .line 76
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_7

    .line 78
    new-instance v0, Landroidx/appcompat/view/menu/u6$k;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$k;-><init>(Landroid/os/Parcel;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$l;

    .line 80
    iput-object v0, v3, Landroidx/appcompat/view/menu/u6$l;->t:Landroidx/appcompat/view/menu/u6$k;

    goto :goto_7

    :cond_6
    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_6

    .line 82
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_8

    .line 84
    new-instance v0, Landroidx/appcompat/view/menu/u6$e;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$e;-><init>(Landroid/os/Parcel;)V

    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_8

    .line 86
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    :goto_9
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_9

    .line 88
    new-instance v0, Landroidx/appcompat/view/menu/u6$g;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$g;-><init>(Landroid/os/Parcel;)V

    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_9

    .line 90
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->s:Ljava/util/ArrayList;

    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_a

    .line 92
    new-instance v0, Landroidx/appcompat/view/menu/u6$h;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/u6$h;-><init>(Landroid/os/Parcel;)V

    iput-object p0, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->s:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_a

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 95
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Landroidx/appcompat/view/menu/u6$m;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/u6$m;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->v:Landroidx/appcompat/view/menu/u6$m;

    .line 97
    :cond_b
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->u:[Landroid/content/pm/Signature;

    const-class v0, Landroid/os/Bundle;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->w:Landroid/os/Bundle;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u6;->z:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->A:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->B:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->C:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u6;->D:I

    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->F:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u6;->H:I

    .line 109
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->I:Ljava/util/ArrayList;

    .line 110
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6;->J:Ljava/util/ArrayList;

    const-class v0, Landroidx/appcompat/view/menu/j50;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/j50;

    iput-object p1, p0, Landroidx/appcompat/view/menu/u6;->K:Landroidx/appcompat/view/menu/j50;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$b;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    iget-object v2, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$b;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$i;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_6

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$k;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$k;->f:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_9

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_7

    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$e;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$e;->f:Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_c

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_9

    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$g;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$g;->f:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_f

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_b

    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$h;

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$h;->f:Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_12

    iget-object v3, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_d

    :cond_13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->v:Landroidx/appcompat/view/menu/u6$m;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->u:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->w:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroidx/appcompat/view/menu/u6;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Landroidx/appcompat/view/menu/u6;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroidx/appcompat/view/menu/u6;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->I:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->J:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->K:Landroidx/appcompat/view/menu/j50;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
