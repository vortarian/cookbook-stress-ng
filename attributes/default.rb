#

node['stress-ng'] = {
    'repo': {
        # Assumes using standard git urls
        'url': 'git@github.com:ColinIanKing/stress-ng.git',
        'revision': 'V0.07.00',
        # Recommend to always build from a clean directory, subscribe statements may have problems if not
        'force_clean': true
    }
}